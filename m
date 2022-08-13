Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA3823AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660414852;
	h=To:Subject:From:Message-Id:Date;
	bh=oTIyHLTsph6LGAxtS+62LsnOVHrOVZAWc3rPtf/QtV4=;
	b=CUnsKWam2u6uwShPMAfwzpjRllgFRkJxbVSiSIn6fs3Pr7UiV7xQJFtJ9fHAwovO
	w9QQpm+xM2Ykl0HF20JZC4hkWbL1bWx/xp0FDDwPKA8SABb+f/Cci2e2x828+UOhyb1
	RwUycBXCIcJQcCQQFHt/dgc5bLfmOWqWqCSGrZEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660414852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oTIyHLTsph6LGAxtS+62LsnOVHrOVZAWc3rPtf/QtV4=;
	b=IRikRQYFo17LqKG5XJK7QCHkY316CLoViEe13DA2Wm3VmzyBAb5+xCogcfy2TKFq
	bMrVQMCQ4D5FYzcNhKXYkZ3Akx2/gd4EiqwYyn/iwFVa/v4Jig5pZ5qP8H/4JqqQ1jO
	uFPtW1Jzp1riucPwO4nGqF5OULn0Z/7gHQC7F2G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182986ffe1a-534830b9-0001-4ed6-b14f-2db9e1abb5bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef679b2b1d36f87f9d43f5eed08cc576b323606874da336fca08866a289ca9ee
Date: Sat, 13 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660414852
