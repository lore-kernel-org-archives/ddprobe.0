Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9972D4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646012184;
	h=To:Subject:From:Message-Id:Date;
	bh=l3QVGjBVp+dSYBDOvJOewRXXgNbnpwBfzOvWOELQqvU=;
	b=UVDzYgcVvdRql75etK44VkompS1OIhJxLwyHsnFlF8de4fUYIA+0P7TDilB6zXjv
	41N/4AEuB2nxAZLu/Vdx1dndHDxH8IzT1Qo82Z3QTdiOGjnjr7kjyObtq5KdP0HKlXK
	HAjeswv4LlDiwQeTmfdEJYhm7n6PTeYcxtEteYZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646012184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l3QVGjBVp+dSYBDOvJOewRXXgNbnpwBfzOvWOELQqvU=;
	b=OTnh8xVz4/1SPfFR1fdsb3eYp34+gyiDlX0WArCA9PxQWpL26QGvNtCJotng7FBj
	Fnjvrep7Vrfv9/9fg6lyDzqHP1MeusYc+bEYO+ujzEefZ7aN3+ZNqJe13a3RPZyGjci
	Eut8qcwx2gIZ18QTVn+EGlzL6vI5r34SKLzQgewI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3df8b8c2-95f75297-f296-4f86-979c-2d4cb95fcc08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae8248eaf3ae2823be5a5db301fa1c05be9c2bebe80f427e8a0f9bc0e1ef8f9a
Date: Mon, 28 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646012184
