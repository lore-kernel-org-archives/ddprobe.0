Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54067E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646975785;
	h=To:Subject:From:Message-Id:Date;
	bh=387ZBAasZDRQ5isxHX4yVm7raTf8cYqm15mzaJQ9/d4=;
	b=IbyT9Twpiyg5EV2weXjuAV/q0qDTeKopvaKRPvNucH1TCxkYBV2S1YoMD34hpKCK
	Cg2M6aEVeELgK7IiAYCmEPehwtzF+ud+odHjyphwy31nkq3T0NRn6+pjQd24bcmGZRA
	2zKiCufao7BbkZbu+9qDE+mZ2C/kPIHy0p1oIowo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646975785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=387ZBAasZDRQ5isxHX4yVm7raTf8cYqm15mzaJQ9/d4=;
	b=YQraOMiCGRd3o0S7+If0T1d9f9pCrTppcltSAFF2YGt6bcuOWbXe3Kx7r8MGMkBO
	oSaQ9pPC0+PgqhQhB/LPW/uERX5K0SIb+0sufoCEDtjcCKiRwHfX8YqD1GbTovVaWHB
	lbt1bsUzpUbD+pWoPugNaPUpym3G01DKLc65DFHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77681724-fc9a94bf-0e01-4148-afaf-a0b6fd843791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0480921bcb1b2f842fce023069d882a061c56172bbc2775050fa060f55dd457f
Date: Fri, 11 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646975784
