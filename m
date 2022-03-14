Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649A07E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647243684;
	h=To:Subject:From:Message-Id:Date;
	bh=Lpk56+8kDCD1BPd4H943h5BqsxktCtZDxe0OCYx6Koc=;
	b=lWxV9oCxePTnm32jl9f8j8Q/ZkSKIf/hAlbUZCtamxVNzlJc/rsvcj5PQGE5BtPz
	FDnW6NRI7xhY5yDDAOR5L4uafe1bpuEhcgdOxm1vDf7IgDksF79/cr9PN5n/S1PJo1O
	3WyujlEhmIronEOoUEpaUkK8T3eeIzrmZ1dtUsIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647243684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lpk56+8kDCD1BPd4H943h5BqsxktCtZDxe0OCYx6Koc=;
	b=hiQorLzEHy627xsBkg4M64e1RbOruStakvVnasfbClx8aI/+LDM9NCiF12zwSDdi
	9QmjG6NK9Ls/E6DRF9qwPhZg6irM208+RnhnhD/BkwR3pmI/amhFlJHAybDREsUddju
	aEsXGOwq+PjxXfZR6N6gv0dYUii9kZz0oSc59nHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f875feb96-dd27ed2d-c9a4-49d8-8b43-78555661e61c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de8cb96ee642e825ac0c1fe649a63000ca825a770a8d02c29a5c893143c78d37
Date: Mon, 14 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647243684
