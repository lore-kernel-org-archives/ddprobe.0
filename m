Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D54F33C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660231252;
	h=To:Subject:From:Message-Id:Date;
	bh=iXxZXUFcjgn2WjJ6D8a4pg7V9wJ2PqCeRld3s4GneJU=;
	b=ZIi69i7sktwoSf3D7sIVsfaWcN90yI13wsaVmvd+eU8mkvCVsIWQUa1ZQ+aR37dh
	c0DZCnfUItHu2Z7v+kZE5iyXRWSzE2KYfAeQjjqE/6/vqHaRwDlqIDTw7obIK75BhyD
	bcTs6fo0fc0m5umTQ4t2XZJTFrGFrMWv6yB9QMGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660231252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iXxZXUFcjgn2WjJ6D8a4pg7V9wJ2PqCeRld3s4GneJU=;
	b=a6J86omwsp2+yFG7kcpCHveO+6H3dOkhrzWqUPWKbfXU47ty5/Mu3sTjBWvcSHTO
	ZX+zq5mUQHEGDR8F/Q8vIS+iO0q4JKsro/jfIlYeTndlFgO3KQmB0K44st/AQkGzqbI
	KY0PFTsU0eE5IQKSdNrHZq+ct4mykdZyXVtmsat8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d7e7a3e-a651662a-d44d-46a8-8d5f-62a6082dfa7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 487bc22c8836cd0f4b387025dad53ffa6029c470ca409f2bc427273388926203
Date: Thu, 11 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660231252
