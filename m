Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0B517D3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 10:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649155318;
	h=To:Subject:From:Message-Id:Date;
	bh=RJJWixKfDP+gM22jRKrbbBdt/3Vo5k6Vq06TNMO7gEM=;
	b=EcSkhyFDr1uc5xkVykI/oyweGuIyPrsGSMD166WOmPU1FRqTF+YAJpoX2LFfbUfA
	73uS9ZV+WBICspQH3UNBAb7CNetGICtLtwoZNQWwIBcdDSuMGtqEaTsDY8xYSR4946i
	300pvYrBR2FZOkF2nrfduHKSAgfXMf5l76wFRJQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649155318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJJWixKfDP+gM22jRKrbbBdt/3Vo5k6Vq06TNMO7gEM=;
	b=kapoidcZbYMlwGQ4PqdFyaKQnBaAi6jUBKu9QpHmL6KU/h6KCtumBOYJMZBAnBwC
	Oers73n6hv+zZ0xNK1YX53OqTtgQbOvQCz51oaD478/hNjfDNV8VJQB6QzvlKWjfxkc
	egUEkMP+Yr7byCkNvaXacfDyaMExjXKu2xl2UJkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff95121f4-3194ac7b-5c2f-46f2-88ee-67f80964f4c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd65dab6f8a53486e94eb5af04f90c4513ab4109c3c0b4498189d22d8a341f0a
Date: Tue, 5 Apr 2022 10:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649155318
