Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84A3914F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772617494; cv=none; b=cqpEy74eLiia4ghZDGqle2cYVe9bPZhLNG5bdF+3n3CaoK1JUVmWX90NfS+INpIwKd4vl0R1t2IepgE8HbyP5Juxw3yA60Xjr/cL988G/Ix//POIm7wUsF6KhS+7iURzJX97C1s+zh/HGJgHGklAmP2Rj4bxuw3p2wdb4U09NKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772617494; c=relaxed/simple;
	bh=VgxTBTwfogOuIc7mNZgsvEPPTFy3pDpo5fH0N9fAf/8=;
	h=To:Subject:From:Message-Id:Date; b=p7e/yVBDjkBcZ5kMFZj+YnDJDGZeaAv9dzdnwp96aNUfcY238Rt8o8DqRf7CP3aKYMaEet7K49Xbu5NpJv90SosmCjrNMzVDkU4TVCQAGmWVsP7x+8IObPVvXrF6brPqQlM7EcJVMBxu0em5UM6ZrI274kMlOnj+fhHnaj4qMLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0+xgHVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0+xgHVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CCAC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772617493;
	bh=VgxTBTwfogOuIc7mNZgsvEPPTFy3pDpo5fH0N9fAf/8=;
	h=To:Subject:From:Date:From;
	b=p0+xgHVrPZ0jetjNwUEv2JSWIlHOAX5+UkPig1PfG5vNDqfGIMX0IzrQ8NUWgJTWP
	 0axThmPid30ljvcBDmsq0LU+audIl2bVHh/Nbez5JFnQzqEmGxpmRqLfrg102O73Bu
	 th917yWZ+oM+3uDHx1vG5Bz5SmzLsoXeF38gPjb7tjL3Q4JIXnNIX9s925bf4XILEm
	 5B0Y5lmlgcnI5O6JmM6o8P+fcEk+OUHLNMJz6DBgqc0P84MLmErrbi4n3xrujyKOXy
	 5hz7ElJ/hAWiZ2KCwTICXUSut3lscIFklK+Q7hOqrFDXhr0S3JQSxBHbxMx23hsWts
	 DQoXxAIFk4Y1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9563EEB7EAC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261749360.7711.17964187432186897079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848c11ee53ae6b6e4887ea955b383d16f10c46d28cd411df620de46422da0e43
Date: Wed, 04 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772617493
