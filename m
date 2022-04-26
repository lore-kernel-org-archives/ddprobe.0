Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0537E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 19:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651000318;
	h=To:Subject:From:Message-Id:Date;
	bh=kqwqYLeOfsqzBroWS4PukAI5DBJEfLEFVcLEL5vLvlw=;
	b=Uar3z0kboxqsR0ps5IsTRpAouiILxiaNlTgAJl4eqIArJ+sbgsnp3mPJRu1C7j0g
	Wq8w45ZB9FYwjdsP78w+Jfh+3G+rXepu6Z+ISXe/X67i+cdGk2YK+0FFtpn35V3BBnN
	L/IO+g4GFszgJVYH3iuggszPjzwAnbKXydwrBXZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651000318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kqwqYLeOfsqzBroWS4PukAI5DBJEfLEFVcLEL5vLvlw=;
	b=Mf0OHrIKEdcHPwGgQnLBRA07gQIrq7SPS4QuNl8T9jQcaoq607OHLtrRh7KLFl0j
	UdadRn1bAOGwpLCFhCeXQ9vTNXZfKiIm6RnimrucHXgpG4vdpz4+KQnfFSmpLbu1Hrb
	oreRyPHvK+kBWvbGxFDxpZ4lxr5kHIBmUKS1Ouxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806749999a-6f9cb7c7-d037-44dc-b542-9534b43f7b27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a980a84ca6b590816c7095f25aed6f4ebe31e0774362e170741b85b5aeaf5c4
Date: Tue, 26 Apr 2022 19:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651000318
