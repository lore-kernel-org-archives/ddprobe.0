Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB64680
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660168853;
	h=To:Subject:From:Message-Id:Date;
	bh=7ofaPRKzsllYtA1dUnGG+3LwP+D/eTbABS6MxgvekRQ=;
	b=L9WjUkv0/GCItfYK7FqqnQ71l06aoxduBxUaN3qzzBjHCuCxNPuUUuItjxDmxPzB
	iwUEyMoudcLuqX/EgYXzXdcUMbTmSrerpRD7mqCa512STeBh68jmFcJ2aM/D2cYbRo1
	7QvpKB5/7WsShfdssXZs51UmiGPSgQ1Dl5xHhm/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660168853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ofaPRKzsllYtA1dUnGG+3LwP+D/eTbABS6MxgvekRQ=;
	b=c7pZw65QqKKAViJV3pMZ9sHnYJI3LwLggHZm6CBmF/tjiWKsjyMPhq8vHRy8VcMT
	cPgoSBWb3m3DXbVfGDYjxhi0HXpaMWVY0f62qG5UPQ2VpfekUc9MhPfom4GOt9Hrj/3
	k0l1ToJXUhI+elo+okw965+1jLHylxTAaZIZuQqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289c65452-16197c3b-23e8-488d-8025-f036abf1eda6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cf3761155346a831dfed7bdc76421027c20439bfc97210bd2ced59aa4244acc
Date: Wed, 10 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660168852
