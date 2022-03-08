Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDFB2F31
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646715684;
	h=To:Subject:From:Message-Id:Date;
	bh=JS+zsDa6M+eq8vKzrECY348hIz396xL8n3h3nUsVrI8=;
	b=iKvZPDLuFt6Dd5h9z/HYPr6Kudoph+V2dKbSzK4Le75Z3SuE1pKCoiDnQy05fQlk
	Q0pc9OBzJ7X45E+CWhANhifYa0PiQ5T7FW2jMBD1aUvYHPByuJSv2Y8K1KzuJgDWXE3
	FK6rU/THu1XL3nV8GSfK2ifuB+XuOmw/rCtxw4Jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646715684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JS+zsDa6M+eq8vKzrECY348hIz396xL8n3h3nUsVrI8=;
	b=RlEHqcADBdBwimgTKXZ0RXuH6jQKIvOH5tsBKXZ8o7dCisPLr9M59OVWoDuVjQw4
	64iY0VKv6jMaKTsCK4y55kI6aa1DTw8eizhQsU/kCb9IrhvpYodcS9fN07VsG+H0mPy
	fS3u1I9zJT++ACaaRUL5tmFJwLEEd6fJ3Pz1vG/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67e74782-8d3db4ae-2b52-4c4f-9dc4-20c1e45a60bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 031156929f2585ec05c62552fd0360dc707ad683b856067722b28fcef877c703
Date: Tue, 8 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646715684
