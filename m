Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068DD7F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 15:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651852558;
	h=To:Subject:From:Message-Id:Date;
	bh=gEpZhyhiKLG+/0c9Gd7mpQCS5CuUp/Wwt1zmsHV3u1M=;
	b=momVfaJiUyuDbeeWSDTFDS447cd5Ntxsc02wL6oKe86GAZ/fraARkvp7RBxSnF4q
	9awVR0kzPvz97obnSZkAzYpgD77/bjIXojU6jsoQBzRjnOVhDEwROvvQiADDTlrZgmP
	cZm1LOZVby6W0cnl3oZ13IrNQ1JdWatoQfhe07Fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651852558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gEpZhyhiKLG+/0c9Gd7mpQCS5CuUp/Wwt1zmsHV3u1M=;
	b=gv2O1y3rS+SonxezKFQ6FBtjYorOc1dmCim7ep58xbyiL/aT1uBy8KfZfMKOdOiW
	iKdOothw9xoKGNuj5DUBykM2/N1u/Q6YPGdNcyneT0sY+8xMNwNpBBx9D3jtJU/HYZQ
	06oIadpMLDxW15fNv0OEAY0QgJB1PSVmirt3tWgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a15bfb6-b857fef4-0bec-4f4b-83fe-7da5716654a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f806eca3d53cacd2ba1b2a3fb94a9ef655852dea0d532afe8fdbfdf00f1601e
Date: Fri, 6 May 2022 15:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651852558
