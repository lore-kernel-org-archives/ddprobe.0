Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D5536F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647834385;
	h=To:Subject:From:Message-Id:Date;
	bh=oX1FXzKjLYUXKyoqATwFTUUv4FR6xlcx5ZzHVcweaX4=;
	b=TMcIo83PzL16gKwtXBWQfrrYpoCmQJDvS9tD5B612mnEaviqnYf+ZAsA0VjnxhQ1
	YLkPoAzYB2JETNRybnxjkjxKgGmG/xtHmXTlvcNt57HnZUQGaUs1IxGs7/Z3Pjry1bp
	PtKDlIdmZTqGDpa2sKW1YqGA2ilNjBsBpoZwbDfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647834385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oX1FXzKjLYUXKyoqATwFTUUv4FR6xlcx5ZzHVcweaX4=;
	b=GlV06zSdIF3wIcvqo8Lh3vuJBwTiXs1HgwoShY+QVX4rTH2poSLx6ZBnh/Jk2E6u
	9vxV+Ww+Dw7DJR1nXg8fV0zyx57ov+AIVm5qpqGLALmPMELNBeQ0S1eseU6RcoSDo8k
	XgCmhv/plyxbUpFS2DUkMHDkWIeNgX4tRZY1pBLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa9549de-33bec3df-b923-4360-b9a9-78bcf5050417-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91ac298db12f8ad4e777625983b5a79d8c33a54d3143914f371e924608dd31d2
Date: Mon, 21 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647834384
