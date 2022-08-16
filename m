Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38107B
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660609253;
	h=To:Subject:From:Message-Id:Date;
	bh=nVfaPUJKIYNx3yMPupL++0RJeGu8YLvnV9BZMxT6ix4=;
	b=ffdsDXslwXHlTsOXVGG6PYOSkYA8NhbFdtArY9PYvnqiahHnxwDo+iHvWHQy+1TO
	57d1gFLn4o6Z6ZSTPtUTJH4sUnrZUSA8GOQ3cDM3eXz/HXcGyaeefPVpZujZqYROYb1
	6PLH2MTy64rwn1Ozr/SQBBtqQlqok5l7R1oYCROE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660609253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVfaPUJKIYNx3yMPupL++0RJeGu8YLvnV9BZMxT6ix4=;
	b=VfXHKfcSq7mrMRwospgXECDRY+ocgiq59yB+RIqLh0JV/lDS0Uk9+aTmvrSYO7pn
	IDRu7LCu+B+wOLNhqKre87FLV4KYi2x70lf8FiPV2s6JoU+QYpeYrGMkfleD/Gkd85z
	a9J/MugGgIpA860+VlWUHXRQMuzT4rgZ1BdQ9V00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4064cca-1c18be19-8ec2-4e34-840a-38d6291e3d5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a0d3d1170ca611fe8bd2fbdf58b0076de0857ada6dcbe31804272b29e423a7f
Date: Tue, 16 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660609252
