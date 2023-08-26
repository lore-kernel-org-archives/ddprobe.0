Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742FE2C9C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82D5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693067648;
	bh=gahOVWZaXeiVQ5OoTrGFEuWz5Qk2dCnhEFYb42S2/gs=;
	h=To:Subject:From:Date:From;
	b=ishD6RLHtPKYldo9xKm2yjmzinS1SNk9YKqelZb/QgRYo0Qn612XePcpNyTR2i+na
	 IGvDfAGn7PIq49Pphyqqij0oepVtdzaPjyo8dIy93VnrBZquLVhpMypner4rtUtkU1
	 cxXgCq/qz6nZ8xiNiC1LmHNxZkkRP8u9wFuWr42Wvg4k6D3qZFGtfdNuYJ7s0O/nFi
	 MdH8BIpgBtmqZjqFmMS27WKbvcImudQmJ+ZiBI0LIk/tuwSrhvPpS5TaBhCcN/GAN7
	 DQsVx+mm9YTZaIEbty0j6co4rowi3QeZhl4sLBN1K4I/USNs23dee9/UBeWwj+KFXi
	 uIOPSp0iqcKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA108C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306764868.23762.4388615505279589187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db9c20852958ec21c4a86d58c8daac90dbe3c7e9be61752aa6918c70dd9840d
Date: Sat, 26 Aug 2023 16:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693067648
