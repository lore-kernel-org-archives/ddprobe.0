Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA907E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C89BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671538287;
	bh=j9zuZ8khS4ija1IsBtb0LD3FNovRSXR2J5bWUN14UFQ=;
	h=To:Subject:From:Date:From;
	b=BQWwYhTl+mgwgoyfJyOEYKrLruioeQcHrDq54rGax3yvKJD4nlE1hjE8gfRiUpZt1
	 Ew8wad5BBzrGX8AQvVkMDln1hUFQSBgYrPoTVr72YQe2hVX1Rmr09DHEj4dmAsUPlY
	 Eb2qw6G9dsJbuQCmkTB9yxPDmPybKYeEYrxtNHqILg5tCXXwS0Pkxi5asHREh3+e3n
	 OaR4a/e/8hXlEqmo13YR9N0hHETNzEpqPBExZQRiK9fK0u1Xd1IXmlsf6pjaRKEWLx
	 lyZxYdao7eF8H75S5rNW9GZV0h0TdGkcohRNdTD1l0OF+XQsz10LFxMbtFVK6TP0f9
	 0NDyYfQbk9YPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7360DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153828746.25908.5496856521487635417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c88e8dd815812df90aa8a20dcc7ae01d84fdf23eb40d440db83dfb80888d1d
Date: Tue, 20 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671538287
