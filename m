Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C48CA2D
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657339012;
	h=To:Subject:From:Message-Id:Date;
	bh=P52GrEsHy3+qoR87TNDd6JdTWwxiRc4Y87TGDKaB6BI=;
	b=UG/XpibRnklWRrQAOU+BGgiuB+BVCvKOupdU2zRg7Vv8B6YlB1lhdu9MdR1voUnC
	Rogm04p66dm4ZT4AvDJNDGgP2zULXFTCyR+TYrCYPyqW9Zv41OWGyfNJR79hph5HqL8
	+LR7qSdBaYjaO3Sqt7KH7c/lBc4jpqpsc9fhV1pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657339012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P52GrEsHy3+qoR87TNDd6JdTWwxiRc4Y87TGDKaB6BI=;
	b=k8ULe0bvMoq7VDuP4PMPzhMdnaWjFaf0H3bjfWlR6wY8SpnYOPJB1SSmo4qb2Smc
	7GLtfWg+aYq04gFfwQrgsAtdk/QaMpEti3iYBhY5K4ddGzHTD1gisC8volUjn0RKlWp
	xwIiDLb3bjZHiiGi4+9gzDa34dM5yxF3YDpgBBcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e11a64f7-cef5f379-0bb7-4fc7-964a-ebb5237cef73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04aa8f1d452194ca7447844dcaeb1186d2424a95ef702d3278908472fe636bb3
Date: Sat, 9 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657339012
