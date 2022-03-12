Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF70614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647121884;
	h=To:Subject:From:Message-Id:Date;
	bh=czHRTQzgSHjvbdrmMn8Zr0EkNzMloRZG0CZG0YiMV90=;
	b=kXlGbUuAc8TSfLq1cm2qwLwxSUfWEh+hcE8j28XTYqWFPEvPrIHtchuMpAA1bvTD
	uZVxnuTsa/5GrA/AjaioDpONidfvVVMJz2HdCG8tXltQlp5cH6ONoL901XoGL3oaLEp
	r2qLkUA3m25p8YlsHe0F+DoDKFDEquZQ561R+qU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647121884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=czHRTQzgSHjvbdrmMn8Zr0EkNzMloRZG0CZG0YiMV90=;
	b=VYXi1TXRBvK1R+ZUM8+0maJCgnRwO+e2HMDoISuxrGHrmx2wYp8egqskPJQ1FGyB
	d8qrFzdd9zhdxUo5zJsHOMlNfKXvpioNkw+KvNqqp1X0pblTvZXERLevkfneDMM3u8e
	xGmUy0LsThzIuD6H2h3Ii0OQN5hCchs4Y5ZtwgGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f801d664e-71d443b3-c47c-41d8-b7e5-edd653995395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4f95405c5f66a2ff76ff142fbec58c2bee56e075aecd4a59e9712c339dadfe1
Date: Sat, 12 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647121884
