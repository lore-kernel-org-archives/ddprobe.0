Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006727C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 08:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649149198;
	h=To:Subject:From:Message-Id:Date;
	bh=vZfPZHe8aaEFyb7rCZ7c2VIF/vmNTRwSUwpJxa3IbzU=;
	b=BGX0kbXqLzR8ItBSkyglvk1Mb5aWTM+wQcGtWBfxL96uPnqfopFx1BJJTtzhckXG
	qyLm800PaVYCT2gJDLi+5EHf96PDYDqftvPuvOlGcJBCKXj+qYPwbHjYv1K2pCC5pt9
	43okMOA6VIr1Mi+ZLHo++Ntg+Y06648UMyC02UUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649149198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vZfPZHe8aaEFyb7rCZ7c2VIF/vmNTRwSUwpJxa3IbzU=;
	b=W9rGxsgCr22UU3fMvV/f/EJ3b6ALKqFbZT4rDOL8oBH5c/9K6dBo7RNgcGsAI6i/
	WCtGTaVR5n3p7lKMxJfOQbhUvbBqAUT7Ke+2aFAH2OEqCo6HrSi0DHDMhX1CuH8iFyG
	0mN4yCocyjJonMe4YSredynn1NDRdutmrlmR/UuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8f3bfbc-5110c256-c583-4193-a3d9-7d75c232d705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f9df26f8546bae26295068720377fa89e4e9e048b3073a0acea25b8d6cd2a3
Date: Tue, 5 Apr 2022 08:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649149198
