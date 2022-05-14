Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E0F36A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 06:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652509679;
	h=To:Subject:From:Message-Id:Date;
	bh=6S9Pp9VsOTMu96WH7Xld7uiKuAVJnKJg7bVtwzEjn0w=;
	b=XCITi0Xzx9SlIC04Zw297jdhh/Sx9xYyQJu4pjej2xLvpCYIQJPb4P7+vKyUgLww
	jGg5wB3ReELMhFCDvTRC0gR+yFI4AMuoXQ9bzuIJVmCCMi2cqrSJIg1xy9b3VDSB7bD
	3YpQgdW4d31k/KYfj1dS10oCT25GUCfNiFlADz64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652509679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6S9Pp9VsOTMu96WH7Xld7uiKuAVJnKJg7bVtwzEjn0w=;
	b=BOozDbbSWOepVwbo0nRa7QOL6BSjE5fT1JncAGmPU0d+gwT+mo63Ym5X14IdE19r
	JxaVmOX/3H1e9+WUk99B6xFqxyYcToxtWJR+K5Dzh6VJ+e0p0y1XEan3/YAHNnWOZk9
	V9KyrNwfnJbheRk8BFS63y+fMkAFFSaz7gHad1kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1409ec0-a26259fd-78b8-4ddb-8c45-6755c92d5146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c654801ab58b65295fc4d9ed8f2a89e3e77e77fa57ef92dc6d6512c52f88cc7
Date: Sat, 14 May 2022 06:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652509679
