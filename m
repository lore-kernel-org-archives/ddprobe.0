Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFAB1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 17:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651252318;
	h=To:Subject:From:Message-Id:Date;
	bh=P0IY11GsI57s1YcNA31HuXkmoEvs3UwfAuC0uaZUO3s=;
	b=P63lXualQ/V2gaU9YgiVTwAyptFI9qLsNnaC8E41ojeWTJSbgD4Tv/jhvXqPBIPw
	fbJfKjfbLAU2gGBRtENydFJf/bCa78sE84svVuLDH0dNrDBejnq4Kmdu8G/tV5uQiYg
	+HIkahAYTwtlUaj38/rIkL+rSOCbsKzt/k/x7gcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651252318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P0IY11GsI57s1YcNA31HuXkmoEvs3UwfAuC0uaZUO3s=;
	b=XvXtPeKgXFYfQXk6g7X6N/57m0Nc+XeHwtEZcfa6tzQCjnWIn5PInnsjAmLOvoke
	2AkiDBp7LCd8WN8/cx6ral1Xcv7aDvxPrezjRqeEwrHqAd7KoCEQcay2TlX1PTHgqqr
	X4RY46+Zuc9K66kl5VvPTcd8717eqDZK0O54Eakw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180764ed07b-9138b7f2-a0eb-41c0-be92-2d24f6be7a31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99070653523e680a67efea4a72f7761fbd70c34849aba67b79f9ef7decde257d
Date: Fri, 29 Apr 2022 17:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651252318
