Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0007D160
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 06:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652337959;
	h=To:Subject:From:Message-Id:Date;
	bh=4H/P2cgBFJP0pVf7MzeRnaj3OwXJLBQeKYIz6CYrQ8U=;
	b=RcjNjR/It+lMCyrJZHKjh8rfgvjDXiy17xiTGUdDo5K7f6pDo0tTHo0ZokfDnSdy
	BfT7L3YjZhlgGJAgXetgmRHwifzrY8RllQ61iq2xCtUwMnd0CY7/eA6sH8QXppc9zuv
	FQnvvYjTiymKHLIpUBd+dL797Fi5l5gxjql3IclE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652337959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4H/P2cgBFJP0pVf7MzeRnaj3OwXJLBQeKYIz6CYrQ8U=;
	b=VqPyPzvW+APeTikzL2vAL4CKeYUTLZMkLg3jJNRsWokpnyURAUxoKPqdmH+vRCQh
	M1eeDrAU6umyO4+eCklfSBhctgaMxPqHKkOof9KExlhH3e4qForMPNZCOS53cfImX2p
	Z203bF1fXdKxq0D64KXkTixXdgfM+lae0paSnchk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b704619e-dcf0788e-6542-4fbf-8216-bcb1f0f40804-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a3a5e35e34fc62400ead5d1fd69726e147140584a20bed2670d11ad7b86d46c
Date: Thu, 12 May 2022 06:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652337959
