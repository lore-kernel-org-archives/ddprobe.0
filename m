Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2A57E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647000985;
	h=To:Subject:From:Message-Id:Date;
	bh=bibD0X/L7tMWzgIOIhI8A5g/1NH2nU9CQrVSQWyKItE=;
	b=FHfQxCLJA6PAG8/QQ9FeP1vDGaTO7zjO+u88FQYtWLhprBm0YaCd3MsEbngpQI3U
	oS2QQ/ilWFsKQzvXVd49+cjviN6mZ6W8yvcEJiPIT0tTF0wkqMuEx0b6EQnmFbHRVsH
	9ddNTnX+XQkbUMT4vR+4jigv1Pm+gKA7vzEoWE2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647000985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bibD0X/L7tMWzgIOIhI8A5g/1NH2nU9CQrVSQWyKItE=;
	b=Rqy/Wtmgl/qazGJygChOVQsMNDe0L8bydL4FVy7SElhBd8Qj8qCk4Pp5ITly3cdf
	OnJphlnr+LItqyD1xhB2D8PmWDy83+G9wbqYSdK3axwRq2RSTDxSXkTBhNquDpRb2pH
	RYwzgukxXSl6mK47PI5EV8NSC2PzupwSLYo2Z174=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78e89ca3-c6b4cc22-7f25-4a51-a7fd-9d10914bce38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8218498f4f78fb18dd6fb87512c46c5f204595c12b764d202a0fcb33f1ee459
Date: Fri, 11 Mar 2022 12:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647000984
