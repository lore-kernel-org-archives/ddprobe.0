Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8EC33F3
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657304212;
	h=To:Subject:From:Message-Id:Date;
	bh=g3tjmtygYVBT5fWoyUOjvDrfFZys85DppYnbrAeP05Q=;
	b=HuhPHuiNhIYJK72yxSXaGHHW+NqaHrjENdR9muVZfVPMX4AwGawQxmC4mU1tTzPP
	Po8nIFMDeWUHrPJVL8MvqvtkVfBNI6ibejK+lB/CM7yL4fx9iGa79rJmFnorjCrnlBw
	tsasOtqlJj0pu7YFlcamJkFavAUgscZ3BQsf+yUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657304212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3tjmtygYVBT5fWoyUOjvDrfFZys85DppYnbrAeP05Q=;
	b=RSbhnmMjx1zuq4zx5xtYcsy7trlz+f4eWpQQ3Baw2Lx47G06k3vKoeTjKJSp8Ppv
	4XiwcqKaBSV17vjLZr3kb4Y6FKw4m50d9JldlCyPly+JbScIs6zka6LrS4A+up9IvOh
	RX5vttj5OAKbH0ajpuGlkOzWA5euixggiylooRtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df076339-a9236ae7-7975-4f5a-b1eb-e726358d0118-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50e89221759adf6cf69b62568671a7ca9987bcae95efdd6cdbe8a483d092fe79
Date: Fri, 8 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657304212
