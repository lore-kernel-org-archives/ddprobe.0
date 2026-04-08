Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432242E4257
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775679335; cv=none; b=ObHqqdSwhVMtismASZMbHk1wRxdLc+ZYCzciVNU6PiaS6SvqGHSYjwzmv3l8oBsI2GPwNK4U9quFByPrgm8M6H2xAAF57zvUPXiK+zUWgm6KqN1FbAhWJGCP8ceIveAnlKUOpyYmkQuMD/4T4aO5b+kwoBFo3xfHDtqsLFfZwrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775679335; c=relaxed/simple;
	bh=tzCyePMqZqr1qddB4/zfBXUjoJ/GinasoG6ERVYpJjM=;
	h=To:Subject:From:Message-Id:Date; b=Jl2vaWvZCVXF0ubxQhhSw0BpkUveY3aYB/H1pEnmI3mK0bx/5BFJ1VRMZty+NTZTvx5ASAtKhj8Za6ClH+g4DDsLzwihgO1XByrOdLcmKH5Nqjr+TGgoik8yOHWXDfhT8Aw2ddyOH9Wawb32IqTP5Ow91r/YkzG+eeSo8YA3Ie8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUmZs8aF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUmZs8aF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EEEC19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775679334;
	bh=tzCyePMqZqr1qddB4/zfBXUjoJ/GinasoG6ERVYpJjM=;
	h=To:Subject:From:Date:From;
	b=ZUmZs8aF7oJrgbvLEIQSl5XNh/vEY1WCt08oSeGu8ElmFW9VFEsXuahFEhg63oyLK
	 WKsx0n7cUVCUMwvRKGf3m9kQYzArOzPJdiplzLH0dDP1p8mYWbxjBFWNhVKvPIRpHL
	 4pBjUkTfLk6TCDTKGnxkRu60sZ9hFXBBz9NQMCM5fF4muv6RHzemnXikG7xWUz8U20
	 LXZY9We7jCzPIukRrQk0zQEa/9cA3ATYccpy9ql21GTzLttQXo6Ft/K+c8AUeJHlqB
	 AQFeSVGVAEy+3W8iPlqkSsohAvSaU2rGHaZ4eEsa1g3MfXwRelNicUBsz4ja0neOx7
	 uEQdLK22ADq8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC7D10F9972
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567933369.17874.7214014460954637911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428b5a158885f815fdd972a27c18cc91d150215d2fee728ec1b7de843b0bc915
Date: Wed, 08 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775679333
