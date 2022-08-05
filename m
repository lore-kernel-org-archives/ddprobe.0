Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE4B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659727252;
	h=To:Subject:From:Message-Id:Date;
	bh=zs4WRGjX+o5O7ERxqVEDvXr7MLDVWysVL07nmwqwmVo=;
	b=TpLwbl+2+8BFU676PgtS2m9QgJa/M8clPPO0V8Of3vN5s3siTr9SmnBPtvBlF6of
	qcDZYurF8/EX+dOBvq8GWl1UdqxqrHmt0MqJKv29Df9uU1uKh/hySEjxOhDWlJxoP05
	fVBTVbpfX/thEN5E4tgZr7TQtacbFUQnDkekGJoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659727252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zs4WRGjX+o5O7ERxqVEDvXr7MLDVWysVL07nmwqwmVo=;
	b=YXNgEUNI/QaRsVasuBR5a3NDmEZX/1dl21jLZt3qNEYI1D5F1sa8kpT4ORy/Qkhm
	6qDbTlEmyJb9Dz4de/464HfIOl73Qe+Lpuiki0sP/zIAYXlpic4mszGRDYMs3EWzfSH
	q4c9zViRPEZy2fNZhlPjWIQ6y0Q6SXT6D11UkJDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f740c6c-0f60813b-3dcb-4c25-b7f1-a269e5aba4ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e76023e6aa162359374b24c119215bbf87ead9b6eb5e7ff3934791081d0337b
Date: Fri, 5 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659727252
