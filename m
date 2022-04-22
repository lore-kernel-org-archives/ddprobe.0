Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E270928E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650625258;
	h=To:Subject:From:Message-Id:Date;
	bh=o2GK+3aqfWzCVH3AbuC3w6UE2PK869V22weqXyGZtcE=;
	b=OmniwSPPjkvRIHfoCwdGkcxTpmOImr4cOZ7Dh8qamXdNbhaKRs3p6aPJmi6NPBSK
	3gHPTM5fh2Tqv8uGyByqIpTNq0Ac/+Vj58KTNrUWJ5oRcV4im4gRT8SfOAwdPMcPMCh
	vQv6wJD4oZl6n8tN2bNgoLVFKgMjqmvj2jru/yUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650625258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2GK+3aqfWzCVH3AbuC3w6UE2PK869V22weqXyGZtcE=;
	b=i5LX0VbBc0dn6eVt5a7hAVdZfVTQEJJh2k42GFRj4hm69RyEP4RPFWhap7mC3mDq
	KwTuO9+Eh7bhiWEtDMV5SXkzaxGxf67KYDDnul6yV3IjR2zBNOZFighvvR5rrL4Aylo
	78iihkCC6kuU1ka+PAWEZF/zJY9mf/gcwPpGeUcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050eea307-c98af1d6-a383-4263-8ed9-4f32b604c249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e59040049214d4296ad585c974d2e9e1e00bd0162959083f6b34a16e6ac6c86
Date: Fri, 22 Apr 2022 11:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650625258
