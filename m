Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1777FC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654260059;
	h=To:Subject:From:Message-Id:Date;
	bh=5WZXf+2tgDJaXM1dvi7XV1QUMnUx4KqK9C5W5qgoNGk=;
	b=OSdmRE3F1stlezoSpvG8kNrJ4AB44dSoYVf1dDOc0x7xYCHQQtQmXDK6rSws7SEz
	BY/STPooKRJoXS5eXcz2ToDzy2qNy/8sAWOdZiw7LUaCBcJv78ypEiXQAf1EaN4n+dY
	jRQSPsa2H9LJnDpUKOOd2T/WhXv1xNmbUe6FFkTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654260059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WZXf+2tgDJaXM1dvi7XV1QUMnUx4KqK9C5W5qgoNGk=;
	b=jBDtr+LksWaFPVJrNEuJK0KsXmE/ceMRbR0xv8mCoPC16TYdyEZi0N/lMjr8vH7V
	vr4/Df1IE6/wiRYqgqH0kGux/usEx2K15h0h+FDEsBXpr74T1+PqRXBgDT6HCL8Eaod
	9NxFDICn2a4giX0/gyVVUklB8Pm2apHDmVrd8Z/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129954ca6-9a116232-6478-4b55-bfcb-b549fbceaa09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed12e45071342e2d3d24f684dfea05cf8c4ab716807b8707d06e240bcadd4b05
Date: Fri, 3 Jun 2022 12:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654260059
