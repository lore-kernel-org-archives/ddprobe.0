Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2117E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 20:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654545779;
	h=To:Subject:From:Message-Id:Date;
	bh=djMq0w8wVFx759ovQWrRiZeyMZYFQjGPhmlEakpLj5w=;
	b=a9sJ4RbKev4TuyslqZGzEqMmM9ZWXl8cmQSksF096G6H7Uhvjm2Y2/wjO+OKpImP
	5g8jHg/ebBX0RGEaglnYnewd+G4mS41wl232A+tdHJrAexOiXIH8pMFJz+fHlzepz8D
	EESMv+hYvvw4f3hYpejQfoVzSoI5rZAeJhCLY78M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654545779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=djMq0w8wVFx759ovQWrRiZeyMZYFQjGPhmlEakpLj5w=;
	b=cAJm+O22hA09OG7xsXZhsY7OmUtnIo1z7/jv+gtRk0BTfxGo0qG82R8wOa/QUuUx
	BJjIgk2xAKLF9OwxeASsojzob/HJcVIa6Of1SRTLsTMqn1Rr6OiSHprKyOScKGWCD1K
	/nZ4fEuarGXqm+iVSLtVoOrpWsSOYBs4E3PCasno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a9d0a35-5ddaea93-0f9b-485b-82c1-46c8184b7175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2c5296fdf3480092ffb3cc45fa9687c377ce13f907600af52fd32f5c8d2763f
Date: Mon, 6 Jun 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654545779
