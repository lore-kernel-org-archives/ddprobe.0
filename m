Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235867C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 10:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648722778;
	h=To:Subject:From:Message-Id:Date;
	bh=C65+VQfAfgr/CLzji57Mq4aHuNR6Lf5KIRZID/78P0Q=;
	b=cm+jdmD7BoZ880TjroeggcXSLYae/rFSB3N3QqJeiCQjbj1b4cI+iYmFJkXhiJWE
	qLoZFNi7IEDEUAQFvM6ps0aCSSV1UIYr9sovs4VRSTD7PW+pwisUZ/ZlEsfql12z7YG
	5UcuBIaUnloqjpAlP4NM2kEXV8FDF6BxAsWPuxow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648722778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C65+VQfAfgr/CLzji57Mq4aHuNR6Lf5KIRZID/78P0Q=;
	b=cM1u3QPTWZgBrhVfGwRGiordeb10PWPnQP9TAk1jFeH9N2XeGNPW8EwsztUiPtYO
	uLfzXfVaqS4JBbq0l4IpNbiEgj1j6UP4qbIWRa7OIvmqtPJ/UU/TTwWh+/9UYa96ETD
	Mw/x7VDLSjgoLG5sapdnU20QolZ1v++vTgG9fa1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf89188d-40c9a59a-0f36-4ea8-8633-282bca55afe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abdfc63b45db75e7c03edbf31c804dd2437c0f3aabeb29e34f4abf14ac1e9aff
Date: Thu, 31 Mar 2022 10:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648722778
