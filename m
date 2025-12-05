Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579CF2586E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764915174; cv=none; b=Ygy6ts5E9rSgtoasd9SFJ5Kk42Cgosqe/ZYlLHyuqPn7BHWAms7EqK3K7pYqjeSqtbPSWpKqhOBhSP+ckY4REmvW4WBpyG4S8J0yhMgJYbw06j3W+OLWw0ITt3dw7yZP2G41Bo4sgW7G94eYvtIKbQf4vsEqYsVZDcRNVArNRYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764915174; c=relaxed/simple;
	bh=hJEY8ZhsY/ysIT94HNQHEN0kBfQJJqsJQh3OrLATvyQ=;
	h=To:Subject:From:Message-Id:Date; b=B7TH+xe0IrEqR3sED82kG5kz1hADfL7geDnNxTHIQywDuHvhTLoITNSEaDp7JaZRtI8TWjbpgoqyGe9QzlhopHRF5hNGGfY82FPH2munXZ+NIYRE/upegG67dHXcS6nu1Hd1f+VOxJROdYTzlI7GvaxU0rxvDHUn1282rnnuqiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+NgJa5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+NgJa5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5429C116D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764915173;
	bh=hJEY8ZhsY/ysIT94HNQHEN0kBfQJJqsJQh3OrLATvyQ=;
	h=To:Subject:From:Date:From;
	b=b+NgJa5byqeD4sw/cvtz6oWT6tSbVaUNEamnP4ACW1jfik65hVLaugr5vPZgRqLr6
	 d/wHLoie+qJTHH/vkx+eBoNOiRylwpVW0rYX18zBh7U6TbJqf1/F6vUjuG+NOmn1++
	 6b/Q3u3VYM3vIM7TYD7qY7THD1r1GrDnWyRqV4KXSgXxOp4SD3gGb1PGprKmfOkYf0
	 naEv6b7KPq6d2+6Ieo4Yk4jjWqszHvgTpe97c0OLY2bkxLopprgD9gU8jgtHRB9AwT
	 lkS8TNvl3mWSEJ1FQfjAEKyBT8sOR+FvonJG43EjjC6lScr3mq54zHk17jImJg+JNW
	 eyopeezgBdJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CED2E008
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491517358.6776.18423564218098263740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6ec36ffc886dc94aa69269ee4f49b714bb883b7cccfdde30b16b8711483c06
Date: Fri, 05 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764915173
