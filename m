Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DCBD2FF
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707889697; cv=none; b=mU6m5y+GIXgbpswKsdzK9iL5JFqIyudGKwSo0lfqZLz+d+43Sb67cOA8iE2Th+qrx4V8exQ7v+jxnyPZbE9JWbKeiL8nGGaNMt1YDLrcYyNFYFBDOxTRXVSffGxKjEf9f2I3tN7APeO2yb6m6pF6HSFo3NJOPF5JJ6ruWEYgOIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707889697; c=relaxed/simple;
	bh=rHvUo8PlLYLmHc8EXCqaKsU8Zzp+8XJdvMi4ShmM35E=;
	h=To:Subject:From:Message-Id:Date; b=FclikLj7alm4EkqCA+173jtx9OhTkZeYVP4FXnQS7FMWb3YqkBE8QPcm2Bqa6GNe7NzvnpQc8qT/ao9AZ0no+Dsq6h/dTRRQ9c1+sFSQzYe1PqKh1IEv9gGeT1HfWHcdussPekQYIpbrI+SpM5E8haxfze0gnS+cJGo2uNEadgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXreNBpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXreNBpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814CFC433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707889696;
	bh=rHvUo8PlLYLmHc8EXCqaKsU8Zzp+8XJdvMi4ShmM35E=;
	h=To:Subject:From:Date:From;
	b=EXreNBpiuCvPmlxL0/ENCAntW1ui0nZkzLEjtZeuHKQYvxivyxT53T0rnpDfsARsb
	 7sp8/igwbrsmMfJALkqo+N/in97e0+ZM2A45zZHDjBNHDhMov1TA1KGHmQUCqke8As
	 fogdyRRmSditbKhgtauMU/bIkySkSjuBMjL29Ac4FnsfLSbYdRaje5P8LwKukfozxC
	 v72AWpSfQZRtjdfKJF0eNAPXKi53s6kjFJ5f+j3VaHXZsz06HcFxzexp2yk2EYxdC/
	 A35jK1aEa8lSHSFrBaAZXdjsvdpnmIuggP2WcpTu6CvuofzY8CkzynxbsWsT+xhABb
	 L5EGMvjezNdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63142C4829D
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170788969638.27108.2810131430624920752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f47598c61b321eb082604da54816ad5ac22a784713aa6d4a7b679b5d09286b
Date: Wed, 14 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707889696
