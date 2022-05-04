Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D512101
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 07:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651650898;
	h=To:Subject:From:Message-Id:Date;
	bh=MRoaMpWU6HjcazCy1OGUZZoUMErEAjgLuu71NBM1HSo=;
	b=gcX9oagn/3wRoJCzqUt7KUfzCfgu/EEJSZlbeuvj9w7jqlKhZzRCYxqqU/tOm9nZ
	oR6VQFPXylFFMsqREB6BXVlvAm2Fa9kwZLZwq8HMRmzuWQxV9g4fwjhkMsymov7ij4k
	dGn3hcXxb7aeKlS+ezS/iymtMXmGgyUn/BpRtdUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651650898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MRoaMpWU6HjcazCy1OGUZZoUMErEAjgLuu71NBM1HSo=;
	b=alSAX0Zr+O9gu8n1jGxVYQND7AG21mkZE0y6Zps861qoWDnydNvhVeJoR4Nt8jPA
	P97z1Zn/dmbpXxlEwIwtYtT/2+sC+g4zERVXENyasZLdsRcH/CHNeksp7NR02Lve7Jg
	EyLOCP7R7M4WW3pJYcRVULJ63Ghbcu7cQOD6xea8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e10a994-4179fa35-e22e-4237-8974-95b8dda46e7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe88470e0b13530aa6d78babc46e98e4bb3b96a6b2bb8b03899a65c3455e18ea
Date: Wed, 4 May 2022 07:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651650898
