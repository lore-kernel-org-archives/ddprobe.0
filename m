Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AC636A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646275585;
	h=To:Subject:From:Message-Id:Date;
	bh=bbCtj3ubdVEMCVbD4TTE+HBnSpqRbQFB1OtrOCTIgAE=;
	b=WLGSKwTyC099bwbcKNEk2gyHEZrOhbA7GaMA6q2E4vV/ECeybPz24mAe04lgttwN
	s4a2LL45aq/SDhtvzQluRAILyqMg1inbyXaSmGOCBDCA3o8ia1/f/S2Enl6TAdWITQA
	Ok+KZHG5+egSSpMDdhN5/AysimEY1xCrHv/l3+6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646275585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bbCtj3ubdVEMCVbD4TTE+HBnSpqRbQFB1OtrOCTIgAE=;
	b=VX/IdkC/dp5hGPG92tOaaNPQZnu2rPWBaVdZFe02AFZ2B77N9dtIMiNxClRZ778Z
	GKTFMANTIyusuhIGmgFgudN4V2Zv5hDwSfsHHZ8v9R0A2ttW/dssfIZv5JU0I4ca54V
	z0IFdDwTai6NSbXUCWQXsAJGDR9bJVpk9dYrkn/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4dabe33b-d261a7c7-de64-4486-a181-97833da45e0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4893c3d84399497d2106f64b2588f747948e540239241ead3d96bfa6e5df93ae
Date: Thu, 3 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646275584
