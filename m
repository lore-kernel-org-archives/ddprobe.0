Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E9823A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 08:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650617638;
	h=To:Subject:From:Message-Id:Date;
	bh=lN5VsDW7XTIouIVOzK8IpI4mai2v1HIWocmVpHvQuQU=;
	b=Hy3mvlPmgRwAllWVt+oynZVwM+8kZRKOxmm4N7LcVUtRAzBQA2Zs+j13AAG1vY7a
	n+SilBdfSJiTZlOTCj+w10a8j4pX/RlwfqdPNIbQhv4HlccSpxJIs0Esr0ikplEy9By
	bLYZuOkxxfGMjWcUfdPQRI4z1U+wM9wBcbNgSWsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650617638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lN5VsDW7XTIouIVOzK8IpI4mai2v1HIWocmVpHvQuQU=;
	b=dI1Reh0nIMClWve9YiH02Aac0OrzBUxqbNFTPD/r4usn0/BaHeSYYwkd5+/cdcgs
	NCy4N1o7JavXg98wPTvLAwT/5RFWwrVwaXiZSNJXW2MFE9SdhsfztToKUkIeJIMqLBH
	zo8I5O9BKe7/3wVjj4IZ+UslJb9cD1Ux+dg/zz9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180507a5d4a-f8579426-e8f4-4712-bd5a-d3f9c81e56ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246b593be84f1a1c46cb6bdcce52bfa41678243279472ded1a2f2e17faff6c12
Date: Fri, 22 Apr 2022 08:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650617638
