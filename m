Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF529800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645590984;
	h=To:Subject:From:Message-Id:Date;
	bh=vhmW0iUZgC/UfRtzNlS4uNZJU/N+UwJfcKqkihUIMPE=;
	b=FSBeGdD1ua38Uujuwop87WSVV74NQsepdXV6Nv9foC8HguYoW/FRWkUDguhB8sqf
	YY8aKOof5Qv4SrmiBx59r5t2fKBcDfe1D6B6/rUJfMOfMoyc7W64kfaOkyTXYfp6vQa
	Fns23eqhy33rykUgBR10x/HY6R18NfDIClxx+neY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645590984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhmW0iUZgC/UfRtzNlS4uNZJU/N+UwJfcKqkihUIMPE=;
	b=k1HlqPVuyaZsjpgFbJcNxQ728q23HvqvnLm2YadvrKbpLmyy0zqemT2FagUl62yv
	hvgqY6LrDRtlycJVknIG1F2/asDbkHLT9CHjwJDoIfWfdflJGros/HfpRnAxTMqQoO7
	nBNOzbguNGvWYSaQKPnhswHJaCpdg9bG0LnsKLLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24ddb85a-10a7705d-ff57-4ccc-84ef-8543f0da6267-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c55a744a54abba691b92bb2f6dd49f0cf3aaf7fbc143a4a51e3b9b89aa0a54ff
Date: Wed, 23 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645590984
