Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32BD816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647157285;
	h=To:Subject:From:Message-Id:Date;
	bh=vzEDTxvOqCMYhplgOkRLKItYwUNmERHzXkKaK8MMQLU=;
	b=KhpDR8RpKaS4+S58NLxxyru0DRsuNSUqM0NTJAtncSU7MdTHhiU/lgFjbBtbMg8C
	PRSgNO23+gwkG44VvSxnOqN0jOY1NC9XR64LPNZsZHOe2f2Nsy21vUZ+w0+vWOrKiR6
	hXMr1sh2pIgtl5YaRKe9+sxSXYsSa0HWOUVSuSnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647157285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vzEDTxvOqCMYhplgOkRLKItYwUNmERHzXkKaK8MMQLU=;
	b=IQa96hvX0GIEmBfzko4eNF4j769TSRiSsAMgjhgWRlEQxysJKsEezwHdWGkUkhOF
	Xw6YAyq7WnbGZW2YqQT56AKYsNmjl609zsZ6o36epv6RQ19twG4CjaMcSWtJXSn9CD0
	gFho17ST5oHq94Bxf/gqnBf73i4h4JES+j2iVL7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82398f94-f35933df-d72e-41dd-808d-1cdfda1830c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce37e88bbd21e405093afcfb04c1570f527489bcf0e262f1d488bcdf98673b6b
Date: Sun, 13 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647157284
