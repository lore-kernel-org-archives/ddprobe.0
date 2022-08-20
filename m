Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4647B7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660963852;
	h=To:Subject:From:Message-Id:Date;
	bh=FC0WxARxUi6sFyhkNxXcgAqUiWhM3V5S+uVoU3/DEdw=;
	b=jpM0tEMbOmj04adSMNkf5Dj7CafPX/mSIIlVLc3j068BrwbvqS9G9/ZXagMsUbH9
	zBf0j2IcB/c7ygScBkqkJged7PueX+SsFVwpCRtJv/JLUDP5reVcYWy5wZBUG0fge37
	kH8Ph7e0ADGtC8UF1bpXR4ZUgA4dBMe20Rke6fKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660963852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FC0WxARxUi6sFyhkNxXcgAqUiWhM3V5S+uVoU3/DEdw=;
	b=hHHJbb7OQbHOh0F6rzg0JXq+7tqOXgyZMraEm90ewjvM4uCmQiQ/UrCDUM2OpPsk
	3E6/ztKbd3wCT0L+tHTpdUO6bL1XYmAE+aspYYVS7ROEYLfTbx+qnvhF+BzlqvFPjpo
	2hESJivyeX1SfCJ4JtjBjhVAUVtEmVk5Qk7lXuss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9291115-c4fa7b28-c6e2-412a-be75-f6670990ba9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 743da116c5a99e53332465826d9576cadade32abc6414c1b26cb34111512e025
Date: Sat, 20 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660963852
