Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CED64681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657644412;
	h=To:Subject:From:Message-Id:Date;
	bh=0d8exHquBiWd5IbBQReXuFcnMdiAFLI7LGL5+QfhhtE=;
	b=jGTFZ3U/YUqPgTjvW3LKcXCABCrjG4VfrX14/p/CzjPNjPYxsZsWjmtJBexGMRmb
	gkPQPM9fTjQO0kJIxwejKv5e5foBiauimTJLK1OhZFXTm7k+kMxg4O58Z4NQN3lHsXX
	29VBjhl9OBswrCGMmsmpodcq3koqcRm+fz+WaZLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657644412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0d8exHquBiWd5IbBQReXuFcnMdiAFLI7LGL5+QfhhtE=;
	b=bD7ZSjY6m4gEVL2Qpj3/L+z5zUcWl19PWn9pBiJkEmfmX9lyWDpAq7uLr6ndJqke
	6x0YPmaFXgP1diMF2vTm/mwX4gvJ04MwnMas8Dyv4lsFa0L+U2z9LjAczinHs7Gd/w+
	n1uYLQdVRjWCQdlB2zBYJFx7qkBiUyTu1oK+Ys1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f34e6dba-509832ad-5137-4efe-a0dc-e0e3f3752543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e73e3ffd7398fb83cae99cd785e6e1d6afdfe8d914b22ef41df44c323e317089
Date: Tue, 12 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657644412
