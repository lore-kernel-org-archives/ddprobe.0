Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C917A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646503584;
	h=To:Subject:From:Message-Id:Date;
	bh=9ToBPpqdIAGv1eWamoyJjaARqLzJTto8Bppx654rN/o=;
	b=XpzMbPn6Y6bSm9zjyVuKv3wxEdzBbrQ1bgT+vrs69rMZckDPBgx03faM8JntxApY
	e4W/imd9MopGJeA+wSNKkh3d0HnYFsHLoex4htEV7lHuJShk3bJXG7Qdgxip9XATq3+
	fFw02Pezyy6zHJxdSrNjQ6jrhUvRElgEa/TM7prk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646503584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ToBPpqdIAGv1eWamoyJjaARqLzJTto8Bppx654rN/o=;
	b=TQXEsBK4i6yxDxVk1ltgJH/gzTBEeFuLyc9CB7z0Xe+hpV0huTbDwG/6iRqaJyWp
	fxEOTX9o/2VSkfonnPF2hZHtHdVAv59hP69HkjWfzSZ+7fHXdF0AJFvuAbGzgxrvyg0
	58B7t7We3qUjl5zr06Z9tPSF9SA0n4nNoXQsghik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b42e40e-8abf0dd5-215c-4573-b3dd-1f3d32e02c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47105102e24ea8e199394bda635a78f4f53dacfd1620aec592a7e02d466a4a0e
Date: Sat, 5 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646503584
