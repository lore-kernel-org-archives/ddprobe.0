Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B25B1873
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661095252;
	h=To:Subject:From:Message-Id:Date;
	bh=viCuIVlqXsdyxlNDqOFjM/ajpvywSNTMGO4uOPo6JPY=;
	b=JHwh6h4kVu0FQqxpioC3Jy2BOUcHuak/ZWbWepJnL5MjfqCYyugFgUvikwD5T7Z/
	cUnNitX9y7VZjWEPe7cQMNt6qfRvef5WLryCRNIN3ULqQK8IXA5w41vmQFM7GicgtQ2
	/FwAwpraM9da9CsMhFKNiwveyB/MpxpErYfWCPow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661095252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=viCuIVlqXsdyxlNDqOFjM/ajpvywSNTMGO4uOPo6JPY=;
	b=REMpgeT3+rBf99BYL266FWL11c1MosxRf1tRlEv2qIcbES1xuHqba8dpeEmPJnN5
	N7gw7Hft702/I9Ek2BiBujC5zV3wDVT0q1R+eeeOcxfThUIlEj/lB5fzp2Px5Bflx3B
	svVWzdlV+HSHBkreyIt/S+rzjRRl4b4+eHlf9R5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0fe1277-ef67e0e7-bc66-463a-95d0-03a63bbc9866-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cee4c9e4e7d91dd8d215c4544150ede1162056062c581a4fcc7ccef709810ac
Date: Sun, 21 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661095252
