Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FB17E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4B6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673662887;
	bh=BJI7Q0k4Z3NMl6SGyVDYyHrk+Ak2NpULwyEgWvrYxSI=;
	h=To:Subject:From:Date:From;
	b=c0ZWUqkJepsbfLhiG+6vfqdQfzCV0QWgkN1HumgG6iJnTFuHyUjRvY9BHextS38Nt
	 qWSO6JbCN9w05dlU7pSukbVkglWg8M+5FJ5rYJPsgIm0+gkNPKBS93c5HDHLX59/Z8
	 rYXB/7FiBV0lY7WPcfc0M69QHrdDl2oCA7JEAs7Ifr5vZfP4pTtes7Q5FoTplhsBJZ
	 NpMk0NSXnItIhgCuaADgRGHPh/nDfdtlY87vV4WM2rcwxJI5dgYmRe9SXAj0SeVkGg
	 74cWzNcqWPd7kVVffrKqxP3E8SyKZgXpLafeBRoU4u0BWtXRJaSdDs+j+bcdWED2yW
	 e2kj3akVoBKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626DBC54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366288739.4042.1576299954420466888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6f61e54b8e4e844aca3fcde8b592cbf46b81598bb0993ff361b886cee6dd68
Date: Sat, 14 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673662887
