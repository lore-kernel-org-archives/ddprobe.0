Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014A923B5
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656150412;
	h=To:Subject:From:Message-Id:Date;
	bh=0LJ8zzcDNzMa5jNt27yLu5LH5p71Qena2FyJrGHUxrY=;
	b=FHASdKAKxQrg4sUsR5R6p+XF6u/3biZ3imULXXWOLgvrtpkIhEbnyMcoWnXJ6sPT
	loOjwAHZA/MtFAc+AUH1VKNivCrKGohoKg4wRiQ2dhMIUmKVC9LbsVuhKnrE2PmMXRI
	pRvOW1PzfsxlA6bsR9es2k3TewU/jnBBQgu/6kOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656150412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LJ8zzcDNzMa5jNt27yLu5LH5p71Qena2FyJrGHUxrY=;
	b=hpx9wKWEELFGoZgNwYQoxYH0HH3H9201Br7eOY8P7ngaAuFHf7RM0FLScq8Tw6Jk
	UJRCcD2tOgLVX+mSsBssdf5Xzaj6u9mGNa6l9BciO/bb7YV8Ss1DGnYd/99SqGlkGhT
	0cCNf9zQRuyK7diA56/VARPUOZdcBTFVTofks6Ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a41cc21-a9fc0982-a5f2-4672-b7ce-bf5f35ac50b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2df9965f38d50a509862d94e1771e8700bae97a47eaf1d9d67da83bc5996d7c2
Date: Sat, 25 Jun 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656150412
