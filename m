Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04AAEC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 11:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655809739;
	h=To:Subject:From:Message-Id:Date;
	bh=keAYf47L5AkQ1PfbRhiz+KT2/8eO0m+tnVrX+NsUDKg=;
	b=L5CG9Vmw/F1TaDX88pZK88FfTKrjXJmroWZNrEcQY84/Y+7Y018ekYXZSHDgZze1
	pyZLbynJjKPTKqODzwuzDj4aIRKhxM28YTMT4d3tIGYodnoJQpBKSTtr/KI6gfw8LfP
	NCth5rpyJLc0fRAkJ8m7Y/MqFv23wzub8QohfLUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655809739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keAYf47L5AkQ1PfbRhiz+KT2/8eO0m+tnVrX+NsUDKg=;
	b=Jtn3K3udLqlx0q9Ap3lpjqwO3jsl+4VTBFVYaWPZBqzxqw/XvTYbbATcPahT789+
	sVM69w7KLiZvH40jGquFJ75EbYSG1NINFbF84ttHMCjfjZrfvKxpYYSNKZDph1QlrSR
	ss59Wexd2GtDAy8mXGolfxj5LNjXWBdsImp2UsKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185f38a02-9fdfd692-44d9-41b4-848e-fe43a55d2450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa07331ac2218cb02ab4a3e0c4cdfdc7fac488bea963938bc47abcc803264601
Date: Tue, 21 Jun 2022 11:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655809739
