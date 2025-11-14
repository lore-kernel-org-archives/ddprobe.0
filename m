Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB727D77D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763102994; cv=none; b=ZdSSvM7fIA48qUwj7hZihK2XFdBNcNJPu8dH/H5WfEdAhxjScUbYRh/0d3RQiOf18iW6vASpG0MsnxDzoVD2cZNpBT6IKUvgO9JQD0vwhH9GzZO53EMwCaB7hCj/2iakY0q63q1ZFER04wmh3IxtFHu8EQe94l1pvkQ0UX9jSwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763102994; c=relaxed/simple;
	bh=hX4gh8dYgta4oRQndtVJg6OjloBkxoVWnSkO66dfe9g=;
	h=To:Subject:From:Message-Id:Date; b=SpZvxS2uafXBVZR+GepRHGgXgE1Mr5JV0XDvGamd0L1W406q6rwmcKrsYPHfot6OAHLLa9sqZnyfr8TrCuLFs6HYeRyUo8r2r1F2h1gLfSSN4yWwF8UWW6qGrsK3tUuTSb2SRbNToa9SDYjrMBGuu6k3fWefnqfwG7vzaN+isCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0TUgHtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0TUgHtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1018C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763102993;
	bh=hX4gh8dYgta4oRQndtVJg6OjloBkxoVWnSkO66dfe9g=;
	h=To:Subject:From:Date:From;
	b=f0TUgHtfsXV6SctMpzbVnepf9bkrgJb8Gv6slXUYGk0R5NM3ta4tFYlH5DZ2r4Mp6
	 KM+GOzl4GiaVfe3ZeDlqBVQXxKxhry/g/VoIBW4+5Qrc7LWqnWmguTwUsyNqhnM3eI
	 Y84MnVQe8weonP2i+Fw3ZvgNGLO4faXnUSt2CBYBefa2a6uoLdKJQdzcgq+cgR9AXl
	 My/6MfWLS/74n1CEvLP5GF2IbjIsjAs6TPVZKfYl4IcOsHlkDcJvDSKwWg+w46veYY
	 Dxo6Q8OO1Vjct8Q6Wa1UbYLq2rCp8S0hh0FbTSEV7juPiQq0nSL2P1ZHRUfqFhZQmS
	 LOGKXrtiaWjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAFCDE016
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310299358.16044.8693295883512446785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd203f74629e51e49fb4857370549d68a8828591e902e2aee0f211f38477ac0a
Date: Fri, 14 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763102993
