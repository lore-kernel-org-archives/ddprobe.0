Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25587198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656228412;
	h=To:Subject:From:Message-Id:Date;
	bh=dOhzznAjxek3oZsKitDi4j8sJ7Jjyd2YL3Va0kOcWws=;
	b=WiKsX/NPBsmHemrkNXjoijAP0wpi4ztlLpIbcnoShVUm3Bg7SaEMdXw2qaKjDgJ8
	MZ2L/eG4GB2CDOYjqiFg9ttgX9rtnhCJ7J1CI0fpX9C7ahVrYcacCaWNObPT8bZhNO+
	aN8HXONSyAeQcZlY0tzivChbhOt9cj5FW4u3iUJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656228412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dOhzznAjxek3oZsKitDi4j8sJ7Jjyd2YL3Va0kOcWws=;
	b=VF/jfca+a88A3vXXuNtPMvHKgjwJsqIhqHfTO8FMcdHSBpLhUJIqCZml0Aw34+G8
	Y2ovNlGtcnvXmogovbJ07yjfUty32tm/7oZYwU62/aiQ2I1uTMVJqjZ+nErkUctFrF2
	ocLyyRA+9u6Jmqi4hEQVFpJGNv8knN9/QFJ/XZbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ee7fb6f-b9f74565-cf1a-4bcc-b27e-a35e3448c16e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b0e633fda5043b9b2b1ce97fdf938053419cbb5e20aefa46e837ce917a8bc00
Date: Sun, 26 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656228412
