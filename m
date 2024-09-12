Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8811581E5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726112754; cv=none; b=IIXBKx05/2s5bzb+NaYhG39zx9sNSxXI48lKe3Tyutpf5+quwPCKsDVk7r2gl3nmG6JgQ78MA+t0eegPkJFLxrJha0ypFvqx78jyv0wkZJ0e5I/Gs3jGh8eeBfH3ZsIge2aDuimgyrFoQyxSfOD3uKWjHkMxlkePN2Nlf9yWfcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726112754; c=relaxed/simple;
	bh=Z0qxNJpQgX7TuOewBangG+3aOzyJD4ZoMKNi0WlwCY4=;
	h=To:Subject:From:Message-Id:Date; b=MM7phvj/X2wex2ZQA65a2zrexap+bfdG7hkXX249WjP2npR+YWBrA6CJxGPVTUPWwSfzK7f/RYCt3x/eCJgjb/avWLEiHXtkJr/QNn0FSSkSvpqQbm5QCtAUxN0GBD0dCfsFV9PEqawIXtno8h3P/OKIe0SwT4sAzKD8qvvIFlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1FORAY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1FORAY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51ECC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726112753;
	bh=Z0qxNJpQgX7TuOewBangG+3aOzyJD4ZoMKNi0WlwCY4=;
	h=To:Subject:From:Date:From;
	b=C1FORAY8zG6zW6N4LYzE/P/Onk7YbygveyuY7AiNKWLKV0sZdm1fYjKCg7MacDJvJ
	 D2ad7ANO3OXi19sDilaCFYi3qcXPhSfUWzzTuIcfoPmKHjolepYfOdxHHTQpReCbj9
	 r1uLEo6Y28uNl7+Mx4fhcdSMwxGHPrHCKl9O+UAwUHjKsBIUHdF+f0h3hioRNdI5sj
	 chMRc22O69Gp5FP50trydoOkz9ml0/YbRqnFts3F3ny9IIOu4wMY1r9f5Wtd7PlqWz
	 7rdtyN1yzYxzzQ2IPX3NVbaVPoWD5EtDO5eG0S4Q6HO3h3Y053XKmvnOWuOKAf5z84
	 E53kCUYR6dNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F28EE6427
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611275358.15979.5715229859431007830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3441ab719c4575aed37bd81ff937fe96366f5065aa135f180db417ea7ac9a51
Date: Thu, 12 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726112753
