Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8881F7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646400084;
	h=To:Subject:From:Message-Id:Date;
	bh=1KyPAfsQXdCEBCFKETnTDS9q3qVM09gHQET+BrjVfIg=;
	b=OiLM7C8JBntRzaxFwn8OcnDphBqeu3VG6KVr1RlKY8fL4GZf+22V6JJqbxKCzX/T
	Qy8QZALGcUVGyqh0G8GbIk4617dXXZu8x5+jIA637HlBKRvqciZwAiIZ+pJtv1HtCFS
	2wBnLQ6h7xe/M3MVYCqcDdDjEscgaorKpnu98xQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646400084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KyPAfsQXdCEBCFKETnTDS9q3qVM09gHQET+BrjVfIg=;
	b=MbCy+MpfxzsOCvC72BbKAB44ML7xpEDbYSY5d1ViW5QFjupUy0OQVe6nwTzwLGho
	3EK5yKcjg6/TG+skKllVIYnEwQ4An35i8co8xuLq4mwhk35IgZbMU1XQZpOsJfBsL7y
	4KWl4DKIqbrm4gTll6Z7Y/W5Y6f9IGeIYo2dbBC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55179afa-8de2d160-5078-45df-9521-62d86f8b8412-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b2b697d8e0017ddd21c3a65ee513a031814b89e4cc0f66b89c17c89e6e32c66
Date: Fri, 4 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646400084
