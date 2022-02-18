Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72628E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 14:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645195885;
	h=To:Subject:From:Message-Id:Date;
	bh=54umNc1adubNx/ZXdMZi1/dKWjImREmdKzEmqV2DpQs=;
	b=VJ0XkyKYI3ZbWi5sUIE6NKnSaxPHY24KIXCOZ5DGeM92ieMTP44gHDit0yGgND5m
	drOwaD5oTyhl1l4IsJfBTIPjUCP/4f3h18xQ29BfKwbim4XzzilOe5Ix+LRwuJu+3ML
	dvXUQxIj9eTzdMWrkAVM7j/okssNy13CZkdRCEe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645195885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=54umNc1adubNx/ZXdMZi1/dKWjImREmdKzEmqV2DpQs=;
	b=eayjoMFkVN4iPIvk7fDfWt9UOF4PbucXc2oOKbaLCtMyrk1lix8889LA5B2se4ar
	HWty1jlfiSrG1He8a0CZg/ChCFwp+eNSK5+CpuKYGUzCz69kBnVto5Q1/7zExmVBSLG
	ug+xZO3J5H5knpMWgvTTHyhLz/TefBTKATCDVAhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d50f90d-b21fcf28-e349-4eef-b0af-7fb7db8d63e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 597b236f5ef4a656c4c99b4186ee8d359b9858a832fc1b46936830b5a953c690
Date: Fri, 18 Feb 2022 14:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645195884
