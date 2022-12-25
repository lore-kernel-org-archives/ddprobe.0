Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DC6190
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88162C433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671979887;
	bh=HciHLW8/xhlFhjPOkmSlVHzbgRaIz9ZX8A5MdJnpcPM=;
	h=To:Subject:From:Date:From;
	b=poReQvnSYGzPWEXMYXEuYIWjAN0H9ynjG7Zr+aSKZtVhxZHijlyQfV0TfP8UK47dU
	 6xVMiuT736ZWUkgAuwGEkjYouxsHal1h+LEeSviPtdAXLCuMYxzzYPon7N7qZuVFe/
	 DhSKhMOuSXV+qhLrIcgotC7xXXXl8IBwTK15otlghR+kDEOhJFhCuy9B+0sY7X7DfD
	 Rt5JGrByi65vZmc99LeZ6kYVQMRDmm1jlX7mkGxyHEHxBwqaIwqL4roWY/nn7Rv189
	 mtTtagJ1qEkbyoe3zz2D/I/yYlYYfeV9FVie8bO8a1iaBfhwv1MG5OKPuPHbXo70GT
	 M92F5tjB8dA9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AAAC4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197988738.24879.14906148677949249462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568e2a741f0beb719a4827f66165fd80ba583a9c93d006ecb0cb7d8b029e03d2
Date: Sun, 25 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671979887
