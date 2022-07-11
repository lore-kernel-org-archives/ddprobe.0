Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D537A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657548412;
	h=To:Subject:From:Message-Id:Date;
	bh=Kyuwreqi3FVoAuRDKp4KygedJMtVxUkGRoCB8lcKvis=;
	b=j+3c1yn2QMs3vD0EbCEGIN+NlJtNeXiHu0wHGlRnsg7Jah3i1GUmg6J3KXrHY8tp
	DpMawZKKeHlF+W414sg2cfQmuWOUewx3WKdFN0haHmrrVOUXIJYIKZjbHxY1Vl1LpPA
	xt/p1Gy/WL44MVeaKZWGOnmTvFaFMjvDTyzapKNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657548412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kyuwreqi3FVoAuRDKp4KygedJMtVxUkGRoCB8lcKvis=;
	b=YZIHrulUPMZQcjC0pIsshYsR6piP/slds0CtNCnE3OZLS6XRl4++WRBBADhAO/Qw
	xKHLUSyD1/GKn70p5VaWuDb56DSMT66TvxAaH8FfL/ey5Hfdu/2B8Ewuw9VUuo4M/mK
	gOXrG8CRwKC+/ro5xgltHQVtjTErQeQkbT2uTWMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed9595c4-c19d3feb-c4d7-4c51-b75c-47db95171b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e50b2e72a7af1c88d6abfc2f38b827eed9ea74c90224d233770d8531f5af66da
Date: Mon, 11 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657548412
