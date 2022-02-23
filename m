Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701FD800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645597284;
	h=To:Subject:From:Message-Id:Date;
	bh=kPwXr+bXPPixttN8M6Zd9Lt+asvemHRmfd8/uYfwOe4=;
	b=Fl/6aDjCuDbDs8IYAdfnqZQB/8dc5PlPztt4F0SRMWRtp2/5Gnf04WjIX7f+3v7j
	Iyeq/Afwal8NFmVGrAOaS6KlBYixvh5JxexHIdecBFOFrarDHQh58t2OQm7Zqh0XJSY
	5ywlzRERCTHz+rK2XvKAjM+bG4dkVK2ya28ZCwe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645597284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kPwXr+bXPPixttN8M6Zd9Lt+asvemHRmfd8/uYfwOe4=;
	b=dJ7NEOEiA8r9yNNE1gOPMCwMjnlbSs9dc2NbZonSKI6G7N5zY9+AkLJcnzjIMiZf
	WM36OoDp49N4xU9CXPIPnMywhlpWhmw12u2CZhoUBgMUa5WOPHrSwxFCVSvXYBp12Gi
	eqMVKHMC/MhnXV9WyAngH/RLIyRejjEgxaCg1oSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f253dd9b3-97d05b6f-2cbc-4ee3-bf3e-5c9028ab09d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 663cef96f5ed3b3182f69512a3869e0d2dcee8cc9d06bc9afd472d09492ec18c
Date: Wed, 23 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645597284
