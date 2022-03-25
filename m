Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7BD28E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 22:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648247098;
	h=To:Subject:From:Message-Id:Date;
	bh=4KSO6zuhNh+PO4kwVZOOoH9nVKM46ph5CCxgyA6rMFw=;
	b=Uv/6t6KNisd29gIA49uzxXUuWGoB3fCBRQNvsyto6B3oKC5Upst7/To8LnkTzbVU
	FnWkTyAGlXXJxr2lnHE88fk2AXUuSDhqU/+XYIcO34UVNuF3CyLdYs0LacDL+ilt5sp
	VbJY+N5wDGbDevVidLM5o3NmZchtkL+SJ/rM8P90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648247098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4KSO6zuhNh+PO4kwVZOOoH9nVKM46ph5CCxgyA6rMFw=;
	b=emydUj3Rv/IhC5j6lmwjbo6pP9v+3L/+ZPt9B9aPG80oFSgLUKwUR5P6836JmIgu
	nB7UdCHXmpsfz0ua4ziPCCGrzn5tzyJhjuFKbK97VKtrW+29NKJP8AbGbmKdWyf4cZy
	H7ytOBYqqc9jKu1i2hDyTOd8oW8p5KzJNQlYFkkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc32ecb71-5fdb8b35-182b-4fef-aa21-22982d83457e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8960d091b90155b52727b9d15b2ba63968b1147f860bb971ca9796f299f1797
Date: Fri, 25 Mar 2022 22:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648247098
