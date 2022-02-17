Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9FF1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645119984;
	h=To:Subject:From:Message-Id:Date;
	bh=g4Vk8vWCTHgspA9AuU6TJMn7W4VxvsimfR0qKc6T4H8=;
	b=Rn9ZrxXpE8jYuBL8V+I0JEYoIxEBPU+qVGSzs+q1HN7CUQCNCrVUcLYbI6taSapP
	unwj5ysvsf8UFyQ6u5OW30Q6mfL9gHa3vHDFFCv47D8A2hn8CmKdLJacHLrn+lKCy0g
	zgw/gs2aOK+2jqwPtpgGVwSfqAYISjsyPwEprhTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645119984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4Vk8vWCTHgspA9AuU6TJMn7W4VxvsimfR0qKc6T4H8=;
	b=BJvmdg/8vBDJfplc4TkPiMRp+NY7TvUEZBYaK+LtOf87xY6Hsi05IhLd9v50iYEk
	sL264eEIv5P70zY3z82gA+QRvjG+LWjpguNleJZ6ib+NyIghKBJEI+cshOCXsymQ5iA
	izh2cl2/eBlZm8rKn6EAh+W7uZiSkZ+RVfHcz9b0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08cad4cb-2fb87886-b06b-4dd6-b21f-98f3dc51ac1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0af28a5fdd63a77b42f0d1aa74aef869ca36bef704ced1db19aa278664d90e3e
Date: Thu, 17 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645119984
