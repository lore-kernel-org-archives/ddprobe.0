Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029FB7F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652606279;
	h=To:Subject:From:Message-Id:Date;
	bh=XwxvIkTABb+W7MrwOedD3WGOvwFwptZIaVUCO6fjKW0=;
	b=MEHWI7iELZLt6m5NxdAJYXrk1Q9APBZTW6jW2SWRhaKlQCXnbnk9epxsA8gkAgcu
	vX4epSRZjeD4imXw6qHtcvsoqP31Mu92KEXBZJaqntXE4++fUcfDN2jzUoRlecQmZxQ
	cSCjtM6UfVHlt/YukpzuvB93BPkTSRer1X6NlBAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652606279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwxvIkTABb+W7MrwOedD3WGOvwFwptZIaVUCO6fjKW0=;
	b=W/zu3TIdkpgIlXiqSC91Wu9BoXbXz+3lu8UAeeNPdc72zUkzlunNqy34Jwn+qb0V
	2HpxMTWvyFDSZO8QNVHIqvFUYxCyNDuh4Tvv+iGnwz4A6RwxXfahKd/1k+aymzFQU0k
	gUzb0KkXhpAlxZLaTdKQlTgGWHc9Op1IJ/qr/7V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7029e80-432c1b51-7fc1-44b4-9fff-3b7b117734e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8edd9b240dae19cc470fde0acce8f2c5701bc63438058e693df41e9a80b5de53
Date: Sun, 15 May 2022 09:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652606279
