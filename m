Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4A2F23
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 15:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654787459;
	h=To:Subject:From:Message-Id:Date;
	bh=9dxLitYJXdADuhNITp/m869KpexajxUuvYJdA75WbrY=;
	b=DLddPulOjGv8orxE0BiJkt8BpKtHwgujDoiYZ53UHa5Nt9/F2SRIGMpfUNyOTK+i
	m5KMjRO9XaGqKu+qPkUr5MOPugXcWdJBlzM8zLNJEnpM7OV5FA8oMvOSgDsZ4PCfBwU
	3101tqfBR4eMC98ek6C/XbZQBloJdnoeMgARusos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654787459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9dxLitYJXdADuhNITp/m869KpexajxUuvYJdA75WbrY=;
	b=bbQ9WNZPNLE3I8lP1DODByErBKSh4VfgV5OMMaT7r7D1ZzqRs3hTV10XbIZ5KP79
	gVqmJOZPuFxmA1at9dg3wCceDBJELR2kNuqIAU7/ZSfxYEOLXE3bknlzw9mlHXR1XYx
	dZ90uUMdPK6E0XMqiZxjsyFfBwKrv74p8XkZSeH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814904c8dd-f63b10f8-8adb-44c8-b77c-d2ea0c5d3350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bdb0cacb92328040b4d4db305679ca20b71a44659ed7a9f0d5b71fb512b076b
Date: Thu, 9 Jun 2022 15:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654787459
