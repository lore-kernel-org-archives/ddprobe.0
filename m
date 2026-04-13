Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A0B19E7F7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776049054; cv=none; b=IBuYvms9oAte3laeXoSuAoTKskUfptY8XOUx4ib6F3LICFB3sA7xJedUd2KaHQqK3lLmidnMbMzEKtzh9QAgvmf5L1HOS82xXP3ZdZeZ/Swf5YzuqmYANtQHmRAZmkUVc7SDswQtrfFq1z17rdqmtFXO1E5BEU39T9t0YbTkvf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776049054; c=relaxed/simple;
	bh=bIAh1OYzJVBP3OuRU4scIErk3z8TGOFb34Bt6tCjpn4=;
	h=To:Subject:From:Message-Id:Date; b=UCP2puxvGk4XOaQb45I707RlfO34TUkjhJZB1VzMO2aaNy7N05zoCEq1x+XxH+Wq6q8JgQemcKgCm3htXRuoHN/4U+7ndtjjREsRLVLIv/wv73T9INaW2/WkKl10E636kaGLWnBgbNQvbFnFAeFt9RQB5c7WdUY4FexfeXzIsiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS8K1/4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS8K1/4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEF5C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776049053;
	bh=bIAh1OYzJVBP3OuRU4scIErk3z8TGOFb34Bt6tCjpn4=;
	h=To:Subject:From:Date:From;
	b=pS8K1/4iJmSsTHveDqhFpRTj+st972FjHDqG2VrzzcddpcVpM7j3ZJeMK52Zag6xD
	 MnOslUYpmWW/xNEIgXOt7+r4yiVRoPJEDMPgc8U6B6HUbdnOYp2loeqX1GNXlO3NMP
	 YoGTSnXmBFC7/RdEgAktJBiTZVeHSljYbwBVkc/Xae6XRbJwNm8Rf2ZeDdF69E7Nju
	 /3p4Kav6zypQFHtnX04w3E/Io+oIlRMbghZ0Jv7idkhlr0atvm9sOcqX05Is3Rhj+Z
	 2wUzJCeLbZ3EFdVBx4H+/eF7k3oR72Iud9DgtCtWg47s0cfkwryEW3msTTZFPBbA3E
	 daazxiyC8LCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE09E9380D
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604905368.28521.11690326562734085489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd76160f28e9bbe9009a73a5a867406c364523528454ba54912385aa0a7e7691
Date: Mon, 13 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776049053
