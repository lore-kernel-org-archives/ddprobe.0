Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FAB20F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 05:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650087478;
	h=To:Subject:From:Message-Id:Date;
	bh=/P7Y1EULBbWyNI51R7cjz0h8UsmfD3toDhPuPoZaECs=;
	b=j+qVdetKEOtvYVfdsn+5Z44cH16lsEZAw3VBnB6ESk7Lz+ueXFZkaVYvE5WgLFN4
	GAzi/G/iStbX0RT5UdnxKXxR7QaEjJK9xOZtkR0V58oZRSGtvgNfUkkE37+Y9bgBe2K
	H47M0aUlWTs+kyKSG2y5kxPdR/e7eLt7DeLlHado=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650087478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/P7Y1EULBbWyNI51R7cjz0h8UsmfD3toDhPuPoZaECs=;
	b=O4g/FJ9BMHBlR6t6P35XqXo0JOYnU3KNlY7rklRMpatTXBHZoHA00MCNH1RxW07B
	3aPE2tvjAWyxy9k8Ulz85fm1Urkt2qmxvgQEaGTrQz6hB25BGo1gzI+yjmsxEOllrkd
	7dW+ekHDgycasAA8mNwmfe/7oM0OvYc1o3XGwN4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018030e0c434-1fac767c-2760-4f33-88a3-363f2795024f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 162271cc0f5cf9c8cdd5151a1357cb3d74581a08e94c344fc6e341b05afb7368
Date: Sat, 16 Apr 2022 05:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650087478
