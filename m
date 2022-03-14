Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2C47E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647245184;
	h=To:Subject:From:Message-Id:Date;
	bh=xuCfg+A4SM0iAhW/hnbejYvpR7SlDqvbbSpFzFTms9c=;
	b=fcmMSUvEGlaRYawwTkwNm7/6LooUUMu/frQxufrHp+1bI5cQH7JtC7kHGvw1mknF
	b/bUb/94zHw/86TijGM6M4+ZjbcHZL5OTqxP1/C9vrdIYxSC7beT7GrNAXEzJXqG0hF
	kQ8X42JPMvpNtXxX9iNE9OSZCUSMctYWe61CtYbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647245184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xuCfg+A4SM0iAhW/hnbejYvpR7SlDqvbbSpFzFTms9c=;
	b=XReg2KPorexSyvgT3MnYTC/KULUV4KowVraxd4el56j2hGWvZXnIimOgZrP293tM
	zKB0JsueUOeHhpVS8TUEHh9+bCrswjoKCqfmji7VGrppN/1Sbfo+Iun7M9qTJPZddWY
	78nlDR07CTCFsDnVg9rJlRI+UGOj5SLLIudfOYXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8776ceda-1b38398f-e554-4a3f-bee7-22b26c951c7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c0b4915ab63b4280ac2727dded7534770f6b8ed9ca9cc8baca066a571cf3960
Date: Mon, 14 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647245184
