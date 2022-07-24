Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A6928F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658655412;
	h=To:Subject:From:Message-Id:Date;
	bh=xfcBsg5lxNi5nyM3n36xK4j1BBB/sidaLE0S7j/Dwq8=;
	b=eKn5p+vlvqJWmLSf149LsRCDZW9H6dV35UyIRH+45WjIV1UbZXt6kv3EodwUoU7T
	AFqbpFT+C8CuF8XI4pGrSgqXeiG8kdA67EjSGHmTzCucUXRLvh9p+h5xGFvduvrI0bp
	LSpl85gO4r8VraBJnz+POw+BE20VZzXGTa7sdNT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658655412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xfcBsg5lxNi5nyM3n36xK4j1BBB/sidaLE0S7j/Dwq8=;
	b=hSTtI+yhb/1wTQyWjkrGm31GThkbLmZ8GKkM3BcHRhBNwnWWy21GSqycEPos3E35
	XGCgwEwHEcWaEQU3VNkyNWDNJqI0w1I823H/jC0YKn7mdswZQ7CIqGF0iAg73uPL7zP
	jVx5uL6cQnrTi04CElK4X2Sm7JpKNjCGAjdvhFHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f911041-64dbbe4a-b4cd-4b48-9a75-0be64f769f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4d92430d356f1d94c003ea297d3155d0c183d4af59f52137521c73ad54543e7
Date: Sun, 24 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658655412
