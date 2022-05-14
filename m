Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30B624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 10:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652525639;
	h=To:Subject:From:Message-Id:Date;
	bh=89ZN2sIglexc2eH1gHQseC+pc+7prXHkz1CnA/7AluA=;
	b=IfQJDlG5VRv/zALmVoEYYkzKQOhmCe5r8AJctqy1rGOsAJp7sHMRjenWM3rrIWA1
	cSRqEP/P7K1ThgRe5kIYMrMb7BvlqWDTMzS3tErRSrQ0BFkGUlTps8dTOHFw3Iz08xK
	YyH5GhYzKZz/w6b8LZecpAgMSpikInGY+jF7IIj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652525639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=89ZN2sIglexc2eH1gHQseC+pc+7prXHkz1CnA/7AluA=;
	b=D+Rs/tsps88rd4LXQpBobOmegm9NoqGewrkDoshFazDZ9kn+QlZprHZlV6oLuu5L
	LqvTldJK4w9kIcD/DP0XpeZh63mpQyUx3lxlOPTvQrgWJZxXZn00mk/dRHd3pZPEBkD
	Obf3u8V8O7CPsqLANHSH5kXllc93Intkq8kxXx8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c234265f-5dbe2f5e-84ea-41b4-8ec7-82be0b559d19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7caf8dd23a945869ffad9bbfd5c885ec77a7ff0bfe2b61bf77a79499e84b7de5
Date: Sat, 14 May 2022 10:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652525639
