Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98FC463A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645140685;
	h=To:Subject:From:Message-Id:Date;
	bh=I8kJ1mGl7Dawr5j6JgOiACpAD+fAooUxIxvEwFFoelU=;
	b=frijJ+7+hGOv5Co9+0PRgJGUB/2BfzbcgGwWAulPRnGa7W/F6EgrCR4NDixgBDX+
	ecs/Jnxl94Z1UZYJ2kumspZiJVRTFISgrlfodJWpxCmfUeO7a7qYA387+AWLMYxWWqZ
	cghgVnjVnc6bx9wPRXoitFdhE1MYDqwDAyymfn/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645140685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I8kJ1mGl7Dawr5j6JgOiACpAD+fAooUxIxvEwFFoelU=;
	b=A7HpWpRrA+zSClzzZZsaqhbsoforxckofeXJ+KnPcKEu4+Tlga/UtuXE9l6xIgaw
	RdiRA9VihkYcErwMWSSpdw1sfZIMnAKnDj+rWL2QuLDzkz0kd8nCyua2orY4uE0UWzg
	+NM/3U/VsscaZg1LDx9PgxX4P7RuOubajFnQ+5U4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a06b025-d15f6d38-4957-4da6-9a08-7c3473ea8fb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72e5f48b00a419f32744f4110692ac30ede4b79cc1581d1c88ab5d548addd3cb
Date: Thu, 17 Feb 2022 23:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645140684
